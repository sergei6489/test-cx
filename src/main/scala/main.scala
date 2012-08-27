package net.whiteants

import ru.circumflex._, core._, web._, freemarker._
import java.util.Date

class Main extends Router {
  val log = new Logger("net.whiteants")

  'currentDate := new Date

  'currentUser := currentUserOption

  get("/test") = "I'm fine, thanks!"
  get("/") = ftl("index.ftl")

  sub("/users") = {
    get("/~new") = ftl("/users/new.ftl")

    post("/?") = {
      val u = new User
      u.login := param("l")
      u.password := param("p")
      try {
        u.save()
      } catch {
        case e: ValidationException =>
          flash.update("errors", e.errors)
          sendRedirect("/users/~new")
      }
      sendRedirect("/users/" + u.id())
    }

    get("/:id") = {
      try {
        val user = currentUserOption.getOrElse(sendError(404))
        val id = param("id").trim.toLong
        if (user.id() == id)
          ftl("/users/view.ftl")
        else sendError(404)
      } catch {
        case e: Exception =>
          sendError(404)
      }
    }
  }

  get("/login") = ftl("/login.ftl")

  post("/login") = {
    val user = User.find(param("l"), param("p"))
    if (user.isEmpty) {
      flash.update("error", new Msg("user.not-found"))
      sendRedirect("/login")
    } else {
      session.update("principal", user.get)
      sendRedirect("/")
    }

  }
}
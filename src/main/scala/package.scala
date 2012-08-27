package net

import ru.circumflex._, web._

package object whiteants {

  def currentUserOption: Option[User] = session.get("principal") match {
    case Some(u: User) => Some(u)
    case _ => None
  }
}
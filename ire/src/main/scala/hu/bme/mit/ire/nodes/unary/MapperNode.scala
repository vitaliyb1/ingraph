package hu.bme.mit.ire.nodes.unary

import hu.bme.mit.ire.SingleForwarder
import hu.bme.mit.ire.messages.{Δ, ReteMessage}

class MapperNode(override val next: (ReteMessage) => Unit,
                 val function: (Any) => Any, val index: Int,
                 override val expectedTerminatorCount: Int = 1
                ) extends UnaryNode with SingleForwarder {
  override def onSizeRequest() = 0

  def onChangeSet(changeSet: Δ): Unit = {
    forward(Δ(
      changeSet.positive.map(t => t.updated(index, function(t(index)))),
      changeSet.negative.map(t => t.updated(index, function(t(index))))
    ))
  }
}

package hu.bme.mit.ire.nodes.unary

import hu.bme.mit.ire.SingleForwarder
import hu.bme.mit.ire.datatypes.Tuple
import hu.bme.mit.ire.messages.{Δ, ReteMessage}

class σNode(override val next: (ReteMessage) => Unit,
            val condition: (Tuple) => Boolean,
            override val expectedTerminatorCount: Int = 1
                   ) extends UnaryNode with SingleForwarder {
  override def onSizeRequest() = 0
  def onChangeSet(changeSet: Δ): Unit = {
    forward(Δ(
      changeSet.positive.filter(condition),
      changeSet.negative.filter(condition)
    ))
  }
}

package hu.bme.mit.ire.nodes.unary.aggregation

import hu.bme.mit.ire.datatypes._
import hu.bme.mit.ire.util.GenericMath

class StatefulStandardDeviation(val sumKey: Int) extends StatefulAggregate {

  val summer = new StatefulSum(sumKey)
  val squaredSummer = new StatefulSquaredSum(sumKey)
  val counter = new StatefulCount()

  override def value(): Any = try {
    GenericMath.sqrt(
      GenericMath.subtract(
        GenericMath.divide(squaredSummer.value(), counter.value()),
        GenericMath.power(GenericMath.divide(summer.value(), counter.value()), 2)
      )
    )
  } catch {
    case _: ArithmeticException => 0
  }

  override def maintainPositive(values: Iterable[Tuple]): Unit = {
    summer.maintainPositive(values)
    squaredSummer.maintainPositive(values)
    counter.maintainPositive(values)
  }

  override def maintainNegative(values: Iterable[Tuple]): Unit = {
    summer.maintainNegative(values)
    squaredSummer.maintainNegative(values)
    counter.maintainNegative(values)
  }

}

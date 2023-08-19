# Financial System

The financial world is complicated but has identifiable components that interact under well-defined rules.

Legal entities trade instruments over time. Trades accumulate to positions
involving cash flows. Positions are marked-to-market to determine profit and loss.

Some cash flows are a function of the instrument issuer. Stocks have dividends,
bonds have coupons, futures have margin accounts. There are also
ancillary cash flows such as broker fees and taxes.

Managing risk involves models of what can happen in the future and how
dynamic trading can tailor future cash flows.

## Who

### Issuer

Financial _securities_ are issued by companies to raise capital.

An _initial public offering_ provides _stock shares_ of a company to investors.
Stock holders have some say in how the company operates and receive dividends decided by the issuer.

Companies can also raise capital by issuing _bonds_. Investors hand over a _notional_
amount and receive periodic _coupons_. When the bond _matures_ they get their last
coupon plus notional. Bond holders have no say in how the company operates but
in the event of default they get first priority on the proceeds from liquidation.

Financial _derivatives_ are contracts between a buyer and seller for a future stream
of cash flows. They are usually issued over-the-counter or by an exchange for
standardized contracts such as puts, calls, futures, and fowards.

We use the term financial _instrument_ to indicate either a security or a derivative.

### Broker

_Brokers_ connect buyers with sellers and charge a fee for that service.
_Broker-dealers_ hold an inventory of the securities they offer and have
_market exposure_ to the change in value of the positions they hold.

### Exchange 

_Exchanges_ connect liquidity providers with investors
and get paid proportioal to the volume that is traded.

### Investor

_Investors_ buy and sell instruments. They decide how much of each instrument
they are willing to trade at the current market price.

### Regulator

_Regulators_ specify reporting requirements and place constraints on permissable trading activity.

## What

The atomic unit of trading is a _position_: an _amount_ of an _instrument_
that a legal _entity_ holds.  A _portfolio_ is a collection of positions.
The _mark-to-market_ of a portfolio is the sum of amounts times prices
of each instrument.
Of course
this requires the price of each instrument to be specified.
If market prices are unknown, or undesired, there are various conventions that are
used. Accountants might use “book,” “liquidation,”
or “going concern” values.
The _profit and loss_ over an interval is the
difference of the mark-to-market from the beginning to the end of the interval.

A _transaction_ is the exchange of positions between a _buyer_ and a _seller_ at some time.
The seller quotes a _price_ $X$ for trading instrument $i'$ held by the seller
for instrument $i$ held by the buyer. The buyer give amount $a'X$ in instrument $i$
to the seller

The buyer decides when and how much of an instrument to acquire from a seller
in exchange some amount of an instrument they hold.
The seller decides what that amount they require and 
provided _prices_ to buyers based on the amount $a'$ of
The amount is the price 

instrument $i'$ the buyer wants to acquire.

they must give $a'X$ in instrument $i$ to the seller
where $X$ is the price quoted by the seller.


f the price is $X$ for amount  
The _price_ of the exchange is the ratio of the buyer amount and seller amount.


The two main rolls are _buyer_ and _seller_. Some positions are cash flows associated
with holding a position: _dividend_, _coupon_, _margin_. Derivatives have _payments_
that are either _received_ by the buyer or _paid_ by the seller.
There are also _fees_ associated with making transactions and _taxes_ depending
on the entity and accounting rules for collections of positions.

Each position has a position id. `roles` indicates why the position exists.
Hold meta data off the id.

A _price transaction_ occurs at a point in time and involves a buyer and a seller
exchanging positions. There may also be positions involving intermediaries
for the transaction. They occur when a buyer initiates a trade with a seller.

A _cash flow transaction_ accounts for the positions due to holding an instrument.
These can be dividends, coupons, margin payments/debits, borrow/holding costs, and taxes.
Cash flow transactions occur due to holding an instrument.

The _market_ is the collection of all positions.
The _holdings_ of an entity is the collection of all their positions.

## Examples

Suppose a market consists of a buyer and a seller with the following initial positions

| amount | instrument | entity | 
| -----: | :--------- | :----: |
| 100 | USD | buyer |
| 10 | F | seller |

If the buyer purchases 2 share of Ford at price 8 then the following positions are added

| amount | instrument | entity 
| -----: | :--------- | :----:
| -16 | USD | buyer | 
| 2 | F | buyer | 
| 16 | USD | seller |
| -2 | F | seller | 

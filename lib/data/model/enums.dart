enum Currency {
  nft,
  digitalRouble,
  undefined,
}

extension GetCurrency on String {
  Currency get toCurrency {
    switch (this) {
      case 'nft':
        return Currency.nft;
      case 'digital_rouble':
        return Currency.digitalRouble;
    }
    return Currency.undefined;
  }
}

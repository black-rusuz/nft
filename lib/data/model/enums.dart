enum Currency {
  nft,
  digitalRouble,
  undefined,
}

enum Role {
  admin,
  employee,
  boss,
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

extension GetRole on String {
  Role get toRole {
    switch (this) {
      case 'admin':
        return Role.admin;
      case 'employee':
        return Role.employee;
      case 'boss':
        return Role.boss;
    }
    return Role.undefined;
  }
}

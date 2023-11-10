export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'EnterMedicineDetailsAndCost' : IDL.Func(
        [IDL.Text, IDL.Nat],
        [IDL.Bool],
        [],
      ),
    'deleteMoreDetails' : IDL.Func([], [IDL.Bool], []),
    'deleteRegDetails' : IDL.Func([], [IDL.Bool], []),
    'getMyMoreDetails' : IDL.Func([], [IDL.Bool], ['query']),
    'getMyRegDetails' : IDL.Func([], [IDL.Bool], ['query']),
    'pushMoreDetails' : IDL.Func(
        [
          IDL.Text,
          IDL.Text,
          IDL.Nat,
          IDL.Text,
          IDL.Text,
          IDL.Text,
          IDL.Text,
          IDL.Text,
        ],
        [IDL.Bool],
        [],
      ),
    'pushRegDetails' : IDL.Func(
        [IDL.Text, IDL.Text, IDL.Text, IDL.Nat, IDL.Text],
        [IDL.Bool],
        [],
      ),
  });
};
export const init = ({ IDL }) => { return []; };

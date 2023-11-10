import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'EnterMedicineDetailsAndCost' : (arg_0: string, arg_1: bigint) => Promise<
      boolean
    >,
  'deleteMoreDetails' : () => Promise<boolean>,
  'deleteRegDetails' : () => Promise<boolean>,
  'getMyMoreDetails' : () => Promise<boolean>,
  'getMyRegDetails' : () => Promise<boolean>,
  'pushMoreDetails' : (
      arg_0: string,
      arg_1: string,
      arg_2: bigint,
      arg_3: string,
      arg_4: string,
      arg_5: string,
      arg_6: string,
      arg_7: string,
    ) => Promise<boolean>,
  'pushRegDetails' : (
      arg_0: string,
      arg_1: string,
      arg_2: string,
      arg_3: bigint,
      arg_4: string,
    ) => Promise<boolean>,
}

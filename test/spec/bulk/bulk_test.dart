// Generated from spec/test/core/bulk.wast.

// ignore_for_file: unused_local_variable

import '../../src/infra.dart';
import 'bulk.0.dart' as bulk_0;
import 'bulk.1.dart' as bulk_1;
import 'bulk.10.dart' as bulk_10;
import 'bulk.11.dart' as bulk_11;
import 'bulk.12.dart' as bulk_12;
import 'bulk.2.dart' as bulk_2;
import 'bulk.3.dart' as bulk_3;
import 'bulk.4.dart' as bulk_4;
import 'bulk.5.dart' as bulk_5;
import 'bulk.6.dart' as bulk_6;
import 'bulk.7.dart' as bulk_7;
import 'bulk.8.dart' as bulk_8;
import 'bulk.9.dart' as bulk_9;

const String _oobma = 'out of bounds memory access';
const String _oobta = 'out of bounds table access';
const String _ue2 = 'uninitialized element 2';
const String _ue = 'uninitialized element';

void main() {
  group('bulk', () {
    // module bulk.0.dart (line 2)
    var m0 = bulk_0.Module();

    // module bulk.1.dart (line 6)
    var m1 = bulk_1.Module();

    // module bulk.2.dart (line 13)
    var m2 = bulk_2.Module();

    invoke('fill_0', () => m2.fill(0x1, 0xFF, 0x3));
    returns('load8_u_0', () => m2.load8_u(0), 0);
    returns('load8_u_1', () => m2.load8_u(0x1), 0xFF);
    returns('load8_u_2', () => m2.load8_u(0x2), 0xFF);
    returns('load8_u_3', () => m2.load8_u(0x3), 0xFF);
    returns('load8_u_4', () => m2.load8_u(0x4), 0);
    invoke('fill_1', () => m2.fill(0, 0xBBAA, 0x2));
    returns('load8_u_5', () => m2.load8_u(0), 0xAA);
    returns('load8_u_6', () => m2.load8_u(0x1), 0xAA);
    invoke('fill_2', () => m2.fill(0, 0, 0x10000));
    traps('fill_3', () => m2.fill(0xFF00, 0x1, 0x101), _oobma);
    returns('load8_u_7', () => m2.load8_u(0xFF00), 0);
    returns('load8_u_8', () => m2.load8_u(0xFFFF), 0);
    invoke('fill_4', () => m2.fill(0x10000, 0, 0));
    traps('fill_5', () => m2.fill(0x10001, 0, 0), _oobma);

    // module bulk.3.dart (line 57)
    var m3 = bulk_3.Module();

    invoke('copy_0', () => m3.copy(0xA, 0, 0x4));
    returns('load8_u_9', () => m3.load8_u(0x9), 0);
    returns('load8_u_10', () => m3.load8_u(0xA), 0xAA);
    returns('load8_u_11', () => m3.load8_u(0xB), 0xBB);
    returns('load8_u_12', () => m3.load8_u(0xC), 0xCC);
    returns('load8_u_13', () => m3.load8_u(0xD), 0xDD);
    returns('load8_u_14', () => m3.load8_u(0xE), 0);
    invoke('copy_1', () => m3.copy(0x8, 0xA, 0x4));
    returns('load8_u_15', () => m3.load8_u(0x8), 0xAA);
    returns('load8_u_16', () => m3.load8_u(0x9), 0xBB);
    returns('load8_u_17', () => m3.load8_u(0xA), 0xCC);
    returns('load8_u_18', () => m3.load8_u(0xB), 0xDD);
    returns('load8_u_19', () => m3.load8_u(0xC), 0xCC);
    returns('load8_u_20', () => m3.load8_u(0xD), 0xDD);
    invoke('copy_2', () => m3.copy(0xA, 0x7, 0x6));
    returns('load8_u_21', () => m3.load8_u(0xA), 0);
    returns('load8_u_22', () => m3.load8_u(0xB), 0xAA);
    returns('load8_u_23', () => m3.load8_u(0xC), 0xBB);
    returns('load8_u_24', () => m3.load8_u(0xD), 0xCC);
    returns('load8_u_25', () => m3.load8_u(0xE), 0xDD);
    returns('load8_u_26', () => m3.load8_u(0xF), 0xCC);
    returns('load8_u_27', () => m3.load8_u(0x10), 0);
    invoke('copy_3', () => m3.copy(0xFF00, 0, 0x100));
    invoke('copy_4', () => m3.copy(0xFE00, 0xFF00, 0x100));
    invoke('copy_5', () => m3.copy(0x10000, 0, 0));
    invoke('copy_6', () => m3.copy(0, 0x10000, 0));
    traps('copy_7', () => m3.copy(0x10001, 0, 0), _oobma);
    traps('copy_8', () => m3.copy(0, 0x10001, 0), _oobma);

    // module bulk.4.dart (line 115)
    var m4 = bulk_4.Module();

    invoke('init_0', () => m4.init(0, 0x1, 0x2));
    returns('load8_u_28', () => m4.load8_u(0), 0xBB);
    returns('load8_u_29', () => m4.load8_u(0x1), 0xCC);
    returns('load8_u_30', () => m4.load8_u(0x2), 0);
    invoke('init_1', () => m4.init(0xFFFC, 0, 0x4));
    traps('init_2', () => m4.init(0xFFFE, 0, 0x3), _oobma);
    returns('load8_u_31', () => m4.load8_u(0xFFFE), 0xCC);
    returns('load8_u_32', () => m4.load8_u(0xFFFF), 0xDD);
    invoke('init_3', () => m4.init(0x10000, 0, 0));
    invoke('init_4', () => m4.init(0, 0x4, 0));
    traps('init_5', () => m4.init(0x10001, 0, 0), _oobma);
    traps('init_6', () => m4.init(0, 0x5, 0), _oobma);

    // module bulk.5.dart (line 154)
    var m5 = bulk_5.Module();

    invoke('init_passive_0', () => m5.init_passive(0x1));
    invoke('drop_passive_0', () => m5.drop_passive());
    invoke('drop_passive_1', () => m5.drop_passive());
    returns('init_passive_1', () => m5.init_passive(0), null);
    traps('init_passive_2', () => m5.init_passive(0x1), _oobma);
    invoke('init_passive_3', () => m5.init_passive(0));
    invoke('drop_active_0', () => m5.drop_active());
    returns('init_active_0', () => m5.init_active(0), null);
    traps('init_active_1', () => m5.init_active(0x1), _oobma);
    invoke('init_active_2', () => m5.init_active(0));

    // module bulk.6.dart (line 181)
    var m6 = bulk_6.Module();

    // module bulk.7.dart (line 196)
    var m7 = bulk_7.Module();

    // module bulk.8.dart (line 199)
    var m8 = bulk_8.Module();

    traps('init_7', () => m8.init(0x2, 0, 0x2), _oobta);
    traps('call_0', () => m8.call(0x2), _ue2);
    invoke('init_8', () => m8.init(0, 0x1, 0x2));
    returns('call_1', () => m8.call(0), 0x1);
    returns('call_2', () => m8.call(0x1), 0);
    traps('call_3', () => m8.call(0x2), _ue);
    invoke('init_9', () => m8.init(0x1, 0x2, 0x2));
    invoke('init_10', () => m8.init(0x3, 0, 0));
    invoke('init_11', () => m8.init(0, 0x4, 0));
    traps('init_12', () => m8.init(0x4, 0, 0), _oobta);
    traps('init_13', () => m8.init(0, 0x5, 0), _oobta);

    // module bulk.9.dart (line 244)
    var m9 = bulk_9.Module();

    invoke('init_passive_4', () => m9.init_passive(0x1));
    invoke('drop_passive_2', () => m9.drop_passive());
    invoke('drop_passive_3', () => m9.drop_passive());
    returns('init_passive_5', () => m9.init_passive(0), null);
    traps('init_passive_6', () => m9.init_passive(0x1), _oobta);
    invoke('init_passive_7', () => m9.init_passive(0));
    invoke('drop_active_1', () => m9.drop_active());
    returns('init_active_3', () => m9.init_active(0), null);
    traps('init_active_4', () => m9.init_active(0x1), _oobta);
    invoke('init_active_5', () => m9.init_active(0));

    // module bulk.10.dart (line 274)
    var m10 = bulk_10.Module();

    // module bulk.11.dart (line 297)
    var m11 = bulk_11.Module();

    // module bulk.12.dart (line 300)
    var m12 = bulk_12.Module();

    invoke('copy_9', () => m12.copy(0x3, 0, 0x3));
    returns('call_4', () => m12.call(0x3), 0);
    returns('call_5', () => m12.call(0x4), 0x1);
    returns('call_6', () => m12.call(0x5), 0x2);
    invoke('copy_10', () => m12.copy(0, 0x1, 0x3));
    returns('call_7', () => m12.call(0), 0x1);
    returns('call_8', () => m12.call(0x1), 0x2);
    returns('call_9', () => m12.call(0x2), 0);
    invoke('copy_11', () => m12.copy(0x2, 0, 0x3));
    returns('call_10', () => m12.call(0x2), 0x1);
    returns('call_11', () => m12.call(0x3), 0x2);
    returns('call_12', () => m12.call(0x4), 0);
    invoke('copy_12', () => m12.copy(0x6, 0x8, 0x2));
    invoke('copy_13', () => m12.copy(0x8, 0x6, 0x2));
    invoke('copy_14', () => m12.copy(0xA, 0, 0));
    invoke('copy_15', () => m12.copy(0, 0xA, 0));
    traps('copy_16', () => m12.copy(0xB, 0, 0), _oobta);
    traps('copy_17', () => m12.copy(0, 0xB, 0), _oobta);
  });
}

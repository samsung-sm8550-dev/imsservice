.class synthetic Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;
.super Ljava/lang/Object;
.source "ImsMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 805
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->IMS_GENERAL_EVENT_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->IMS_GENERAL_EVENT_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VCID_GENERAL_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_SUCCEEDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HELD:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUMED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_ORIENTATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NO_FAR_FRAME:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_FIRST_FRAME_READY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_EVENT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CHANGE_PEER_DIMENSION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$IMSMediaEvent$MEDIA_STATE:[I

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    return-void
.end method

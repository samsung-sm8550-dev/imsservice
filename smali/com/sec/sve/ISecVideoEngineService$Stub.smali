.class public abstract Lcom/sec/sve/ISecVideoEngineService$Stub;
.super Landroid/os/Binder;
.source "ISecVideoEngineService.java"

# interfaces
.implements Lcom/sec/sve/ISecVideoEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ISecVideoEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_bindToNetwork:I = 0xa

.field static final TRANSACTION_cpveStartInjection:I = 0x6b

.field static final TRANSACTION_cpveStopInjection:I = 0x6c

.field static final TRANSACTION_isSupportingCameraMotor:I = 0x61

.field static final TRANSACTION_onDestroy:I = 0x1

.field static final TRANSACTION_registerForCmcEventListener:I = 0x6f

.field static final TRANSACTION_registerForMediaEventListener:I = 0x6d

.field static final TRANSACTION_saeCreateChannel:I = 0xf

.field static final TRANSACTION_saeDeleteChannel:I = 0x14

.field static final TRANSACTION_saeEnableSRTP:I = 0x17

.field static final TRANSACTION_saeGetAudioRxTrackId:I = 0x20

.field static final TRANSACTION_saeGetLastPlayedVoiceTime:I = 0x1c

.field static final TRANSACTION_saeGetVersion:I = 0x1f

.field static final TRANSACTION_saeHandleDtmf:I = 0x15

.field static final TRANSACTION_saeInitialize:I = 0xc

.field static final TRANSACTION_saeModifyChannel:I = 0x13

.field static final TRANSACTION_saeSetAudioPath:I = 0x21

.field static final TRANSACTION_saeSetCodecInfo:I = 0xe

.field static final TRANSACTION_saeSetDtmfCodecInfo:I = 0x16

.field static final TRANSACTION_saeSetRtcpOnCall:I = 0x18

.field static final TRANSACTION_saeSetRtcpTimeout:I = 0x1a

.field static final TRANSACTION_saeSetRtcpXr:I = 0x1b

.field static final TRANSACTION_saeSetRtpTimeout:I = 0x19

.field static final TRANSACTION_saeSetTOS:I = 0x1e

.field static final TRANSACTION_saeSetVoicePlayDelay:I = 0x1d

.field static final TRANSACTION_saeStartChannel:I = 0x10

.field static final TRANSACTION_saeStartRecording:I = 0x67

.field static final TRANSACTION_saeStopChannel:I = 0x12

.field static final TRANSACTION_saeStopRecording:I = 0x68

.field static final TRANSACTION_saeTerminate:I = 0xd

.field static final TRANSACTION_saeUpdateChannel:I = 0x11

.field static final TRANSACTION_sendGeneralBundleEvent:I = 0xb

.field static final TRANSACTION_sendStillImage:I = 0x7

.field static final TRANSACTION_setCameraEffect:I = 0x8

.field static final TRANSACTION_setDisplaySurface:I = 0x3

.field static final TRANSACTION_setOrientation:I = 0x4

.field static final TRANSACTION_setPreviewResolution:I = 0x9

.field static final TRANSACTION_setPreviewSurface:I = 0x2

.field static final TRANSACTION_setZoom:I = 0x5

.field static final TRANSACTION_sreCreateRelayChannel:I = 0x50

.field static final TRANSACTION_sreCreateStream:I = 0x4c

.field static final TRANSACTION_sreDeleteRelayChannel:I = 0x51

.field static final TRANSACTION_sreDeleteStream:I = 0x4e

.field static final TRANSACTION_sreEnableSRTP:I = 0x58

.field static final TRANSACTION_sreGetMdmn:I = 0x4a

.field static final TRANSACTION_sreGetVersion:I = 0x48

.field static final TRANSACTION_sreHoldRelayChannel:I = 0x54

.field static final TRANSACTION_sreInitialize:I = 0x47

.field static final TRANSACTION_sreResumeRelayChannel:I = 0x55

.field static final TRANSACTION_sreSetCodecInfo:I = 0x5d

.field static final TRANSACTION_sreSetConnection:I = 0x57

.field static final TRANSACTION_sreSetDtmfCodecInfo:I = 0x5e

.field static final TRANSACTION_sreSetMdmn:I = 0x49

.field static final TRANSACTION_sreSetNetId:I = 0x4b

.field static final TRANSACTION_sreSetRtcpOnCall:I = 0x59

.field static final TRANSACTION_sreSetRtcpTimeout:I = 0x5b

.field static final TRANSACTION_sreSetRtcpXr:I = 0x5c

.field static final TRANSACTION_sreSetRtpTimeout:I = 0x5a

.field static final TRANSACTION_sreStartRecording:I = 0x5f

.field static final TRANSACTION_sreStartRelayChannel:I = 0x52

.field static final TRANSACTION_sreStartStream:I = 0x4d

.field static final TRANSACTION_sreStopRecording:I = 0x60

.field static final TRANSACTION_sreStopRelayChannel:I = 0x53

.field static final TRANSACTION_sreUpdateRelayChannel:I = 0x56

.field static final TRANSACTION_sreUpdateStream:I = 0x4f

.field static final TRANSACTION_steCreateChannel:I = 0x38

.field static final TRANSACTION_steDeleteChannel:I = 0x3d

.field static final TRANSACTION_steEnableSRTP:I = 0x3f

.field static final TRANSACTION_steInitialize:I = 0x36

.field static final TRANSACTION_steModifyChannel:I = 0x3c

.field static final TRANSACTION_steSendText:I = 0x3e

.field static final TRANSACTION_steSetCallOptions:I = 0x44

.field static final TRANSACTION_steSetCodecInfo:I = 0x37

.field static final TRANSACTION_steSetNetId:I = 0x45

.field static final TRANSACTION_steSetRtcpOnCall:I = 0x40

.field static final TRANSACTION_steSetRtcpTimeout:I = 0x42

.field static final TRANSACTION_steSetRtcpXr:I = 0x43

.field static final TRANSACTION_steSetRtpTimeout:I = 0x41

.field static final TRANSACTION_steSetSessionId:I = 0x46

.field static final TRANSACTION_steStartChannel:I = 0x39

.field static final TRANSACTION_steStopChannel:I = 0x3b

.field static final TRANSACTION_steUpdateChannel:I = 0x3a

.field static final TRANSACTION_sveCmcRecorderCreate:I = 0x63

.field static final TRANSACTION_sveCreateChannel:I = 0x22

.field static final TRANSACTION_sveGetCodecCapacity:I = 0x35

.field static final TRANSACTION_sveGetLastPlayedVideoTime:I = 0x30

.field static final TRANSACTION_sveGetRtcpTimeInfo:I = 0x34

.field static final TRANSACTION_sveRecorderCreate:I = 0x62

.field static final TRANSACTION_sveRecorderDelete:I = 0x64

.field static final TRANSACTION_sveRecorderStart:I = 0x65

.field static final TRANSACTION_sveRecorderStop:I = 0x66

.field static final TRANSACTION_sveRestartEmoji:I = 0x2e

.field static final TRANSACTION_sveSendGeneralEvent:I = 0x33

.field static final TRANSACTION_sveSetCodecInfo:I = 0x26

.field static final TRANSACTION_sveSetConnection:I = 0x25

.field static final TRANSACTION_sveSetGcmSrtpParams:I = 0x28

.field static final TRANSACTION_sveSetHeldInfo:I = 0x2f

.field static final TRANSACTION_sveSetMediaConfig:I = 0x29

.field static final TRANSACTION_sveSetNetworkQoS:I = 0x32

.field static final TRANSACTION_sveSetSRTPParams:I = 0x27

.field static final TRANSACTION_sveSetVideoPlayDelay:I = 0x31

.field static final TRANSACTION_sveStartCamera:I = 0x2a

.field static final TRANSACTION_sveStartChannel:I = 0x23

.field static final TRANSACTION_sveStartEmoji:I = 0x2c

.field static final TRANSACTION_sveStartRecording:I = 0x69

.field static final TRANSACTION_sveStopCamera:I = 0x2b

.field static final TRANSACTION_sveStopChannel:I = 0x24

.field static final TRANSACTION_sveStopEmoji:I = 0x2d

.field static final TRANSACTION_sveStopRecording:I = 0x6a

.field static final TRANSACTION_switchCamera:I = 0x6

.field static final TRANSACTION_unregisterForCmcEventListener:I = 0x70

.field static final TRANSACTION_unregisterForMediaEventListener:I = 0x6e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 454
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 455
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ISecVideoEngineService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 466
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 467
    instance-of v1, v0, Lcom/sec/sve/ISecVideoEngineService;

    if-eqz v1, :cond_1

    .line 468
    check-cast v0, Lcom/sec/sve/ISecVideoEngineService;

    return-object v0

    .line 470
    :cond_1
    new-instance v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    const-string v2, "com.sec.sve.ISecVideoEngineService"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_0

    const v3, 0xffffff

    if-gt v1, v3, :cond_0

    .line 480
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    move-object v4, v0

    move-object v3, v14

    move-object v2, v15

    .line 2224
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2216
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/ICmcMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ICmcMediaEventListener;

    move-result-object v1

    .line 2217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2218
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    .line 2219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2207
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/ICmcMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ICmcMediaEventListener;

    move-result-object v1

    .line 2208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2209
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    .line 2210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2198
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/IImsMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/IImsMediaEventListener;

    move-result-object v1

    .line 2199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2200
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    .line 2201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2189
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sve/IImsMediaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/IImsMediaEventListener;

    move-result-object v1

    .line 2190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2191
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    .line 2192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 2181
    :pswitch_4
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->cpveStopInjection()I

    move-result v0

    .line 2182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2170
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2174
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->cpveStartInjection(Ljava/lang/String;I)I

    move-result v0

    .line 2175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2160
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2162
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopRecording(I)I

    move-result v0

    .line 2163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2164
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2148
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2152
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartRecording(II)I

    move-result v0

    .line 2153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2154
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2136
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2140
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->saeStopRecording(IZ)I

    move-result v0

    .line 2141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2142
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2120
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2128
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/sve/ISecVideoEngineService;->saeStartRecording(IIIZ)I

    move-result v0

    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2108
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2112
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStop(IZ)I

    move-result v0

    .line 2113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2114
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2098
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2100
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStart(I)I

    move-result v0

    .line 2101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2088
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2090
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderDelete(I)I

    move-result v0

    .line 2091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2092
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2048
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 2062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move/from16 v13, v16

    .line 2072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move/from16 v14, v16

    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move/from16 v15, v16

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 2078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 2079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 2080
    invoke-interface/range {v0 .. v18}, Lcom/sec/sve/ISecVideoEngineService;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0

    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v15, p3

    .line 2082
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_e
    move-object v15, v14

    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 2040
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result v0

    .line 2041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_f
    move-object v15, v14

    .line 2020
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->isSupportingCameraMotor()Z

    move-result v0

    .line 2021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2022
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_10
    move-object v15, v14

    .line 2009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2013
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRecording(II)I

    move-result v0

    .line 2014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2015
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_11
    move-object v15, v14

    .line 1995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2001
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRecording(III)I

    move-result v0

    .line 2002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2003
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_12
    move-object v15, v14

    .line 1975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1987
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetDtmfCodecInfo(IIIIII)I

    move-result v0

    .line 1988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_13
    move-object v15, v14

    .line 1905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    int-to-char v15, v15

    .line 1935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v16, v0

    .line 1937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v17, v0

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v18, v0

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v19, v0

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v20, v0

    .line 1945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1967
    invoke-interface/range {v0 .. v31}, Lcom/sec/sve/ISecVideoEngineService;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v15, p3

    .line 1969
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_14
    move-object v15, v14

    .line 1885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 1896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1897
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpXr(IIIII[I)I

    move-result v0

    .line 1898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_15
    move-object v15, v14

    .line 1873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v14, p0

    .line 1877
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpTimeout(II)I

    move-result v0

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_16
    move-object v15, v14

    move-object v14, v0

    .line 1861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1865
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtpTimeout(II)I

    move-result v0

    .line 1866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1867
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_17
    move-object v15, v14

    move-object v14, v0

    .line 1843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1853
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpOnCall(IIIII)I

    move-result v0

    .line 1854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_18
    move-object v15, v14

    move-object v14, v0

    .line 1825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1835
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreEnableSRTP(III[BI)I

    move-result v0

    .line 1836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_19
    move-object v15, v14

    move-object v14, v0

    .line 1801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1817
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0

    .line 1818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1a
    move-object v15, v14

    move-object v14, v0

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1793
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateRelayChannel(II)I

    move-result v0

    .line 1794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1795
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1b
    move-object v15, v14

    move-object v14, v0

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1781
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sreResumeRelayChannel(I)I

    move-result v0

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1c
    move-object v15, v14

    move-object v14, v0

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1771
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sreHoldRelayChannel(I)I

    move-result v0

    .line 1772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1d
    move-object v15, v14

    move-object v14, v0

    .line 1759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1761
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRelayChannel(I)I

    move-result v0

    .line 1762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1e
    move-object v15, v14

    move-object v14, v0

    .line 1747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1751
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRelayChannel(II)I

    move-result v0

    .line 1752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1753
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1f
    move-object v15, v14

    move-object v14, v0

    .line 1737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1739
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteRelayChannel(I)I

    move-result v0

    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_20
    move-object v15, v14

    move-object v14, v0

    .line 1725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1729
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateRelayChannel(II)I

    move-result v0

    .line 1730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_21
    move-object v15, v14

    move-object v14, v0

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateStream(I)I

    move-result v0

    .line 1718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_22
    move-object v15, v14

    move-object v14, v0

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1707
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteStream(I)I

    move-result v0

    .line 1708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_23
    move-object v15, v14

    move-object v14, v0

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->sreStartStream(III)I

    move-result v0

    .line 1698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_24
    move-object v15, v14

    move-object v14, v0

    .line 1655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 1681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v14, v16

    .line 1683
    invoke-interface/range {v0 .. v14}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v0

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_25
    move-object v15, v14

    move-object v14, v0

    .line 1643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1647
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetNetId(IJ)I

    move-result v0

    .line 1648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_26
    move-object v15, v14

    move-object v14, v0

    .line 1633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1635
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sreGetMdmn(I)Z

    move-result v0

    .line 1636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1637
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_27
    move-object v15, v14

    move-object v14, v0

    .line 1621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1625
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sreSetMdmn(IZ)I

    move-result v0

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_28
    move-object v15, v14

    move-object v14, v0

    .line 1613
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->sreGetVersion()Ljava/lang/String;

    move-result-object v0

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_29
    move-object v15, v14

    move-object v14, v0

    .line 1607
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->sreInitialize()V

    .line 1608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2a
    move-object v15, v14

    move-object v14, v0

    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1600
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->steSetSessionId(II)I

    move-result v0

    .line 1601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2b
    move-object v15, v14

    move-object v14, v0

    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->steSetNetId(II)I

    move-result v0

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2c
    move-object v15, v14

    move-object v14, v0

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->steSetCallOptions(IZ)I

    move-result v0

    .line 1577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2d
    move-object v15, v14

    move-object v14, v0

    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1564
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpXr(IIIII[I)I

    move-result v0

    .line 1565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2e
    move-object v15, v14

    move-object v14, v0

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1544
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpTimeout(IJ)I

    move-result v0

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2f
    move-object v15, v14

    move-object v14, v0

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtpTimeout(IJ)I

    move-result v0

    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_30
    move-object v15, v14

    move-object v14, v0

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpOnCall(III)I

    move-result v0

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_31
    move-object v15, v14

    move-object v14, v0

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1506
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->steEnableSRTP(III[BI)I

    move-result v0

    .line 1507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_32
    move-object v15, v14

    move-object v14, v0

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1488
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->steSendText(ILjava/lang/String;I)I

    move-result v0

    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_33
    move-object v15, v14

    move-object v14, v0

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1474
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->steDeleteChannel(I)I

    move-result v0

    .line 1475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_34
    move-object v15, v14

    move-object v14, v0

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->steModifyChannel(II)I

    move-result v0

    .line 1465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_35
    move-object v15, v14

    move-object v14, v0

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->steStopChannel(I)I

    move-result v0

    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_36
    move-object v15, v14

    move-object v14, v0

    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1442
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_37
    move-object v15, v14

    move-object v14, v0

    .line 1412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->steStartChannel(IIZ)I

    move-result v0

    .line 1419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_38
    move-object v15, v14

    move-object v14, v0

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1404
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    .line 1405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_39
    move-object v15, v14

    move-object v14, v0

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v14, v0

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move v15, v0

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v16, v0

    .line 1348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v17, v0

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v18, v0

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v19, v0

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v20, v0

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1376
    invoke-interface/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v15, p3

    .line 1378
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_3a
    move-object v15, v14

    .line 1309
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->steInitialize()V

    .line 1310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3b
    move-object v15, v14

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v14, p0

    .line 1302
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sveGetCodecCapacity(I)Ljava/lang/String;

    move-result-object v0

    .line 1303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3c
    move-object v15, v14

    move-object v14, v0

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0

    .line 1293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    .line 1294
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3d
    move-object v15, v14

    move-object v14, v0

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-interface {v14, v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result v0

    .line 1283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3e
    move-object v15, v14

    move-object v14, v0

    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-interface {v14, v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->sveSetNetworkQoS(IIII)I

    move-result v0

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3f
    move-object v15, v14

    move-object v14, v0

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sveSetVideoPlayDelay(II)I

    move-result v0

    .line 1251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_40
    move-object v15, v14

    move-object v14, v0

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_41
    move-object v15, v14

    move-object v14, v0

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-interface {v14, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->sveSetHeldInfo(IZZ)I

    move-result v0

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_42
    move-object v15, v14

    move-object v14, v0

    .line 1213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sveRestartEmoji(I)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_43
    move-object v15, v14

    move-object v14, v0

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-interface {v14, v0}, Lcom/sec/sve/ISecVideoEngineService;->sveStopEmoji(I)V

    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_44
    move-object v15, v14

    move-object v14, v0

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sveStartEmoji(ILjava/lang/String;)V

    .line 1198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_45
    move-object v15, v14

    move-object v14, v0

    .line 1185
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->sveStopCamera()I

    move-result v0

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_46
    move-object v15, v14

    move-object v14, v0

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-interface {v14, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sveStartCamera(II)I

    move-result v0

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_47
    move-object v15, v14

    move-object v14, v0

    .line 1150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1166
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->sveSetMediaConfig(IZIZIIII)I

    move-result v0

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_48
    move-object v15, v14

    move-object v14, v0

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v5, v0

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1142
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->sveSetGcmSrtpParams(IIIICI[BI[BI)I

    move-result v0

    .line 1143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move/from16 v31, v13

    goto/16 :goto_3

    :pswitch_49
    move-object v15, v14

    move-object v14, v0

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v14, v13

    move/from16 v13, v16

    .line 1114
    invoke-interface/range {v0 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v0

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_4a
    move-object v15, v14

    move-object v14, v0

    move v0, v13

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v14

    move/from16 v14, v16

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    move/from16 v15, v16

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1080
    invoke-interface/range {v0 .. v26}, Lcom/sec/sve/ISecVideoEngineService;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0

    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v15, p3

    .line 1082
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_4b
    move-object v15, v14

    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 1020
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I

    move-result v0

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_4c
    move-object v15, v14

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopChannel(I)I

    move-result v0

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_4d
    move-object v15, v14

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->sveStartChannel(III)I

    move-result v0

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_4e
    move-object v15, v14

    .line 970
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->sveCreateChannel()I

    move-result v0

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_4f
    move-object v15, v14

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetAudioPath(II)I

    move-result v0

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_50
    move-object v15, v14

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetAudioRxTrackId(I)I

    move-result v0

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_51
    move-object v15, v14

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->saeGetVersion([BI)I

    move-result v0

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_52
    move-object v15, v14

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetTOS(II)I

    move-result v0

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_53
    move-object v15, v14

    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetVoicePlayDelay(II)I

    move-result v0

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    const/16 v31, 0x1

    goto/16 :goto_3

    :pswitch_54
    move-object v15, v14

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object v0

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    .line 907
    invoke-virtual {v15, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_55
    move-object v15, v14

    move v14, v13

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 895
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpXr(IIIII[I)I

    move-result v0

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_56
    move-object v15, v14

    move v14, v13

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpTimeout(IJ)I

    move-result v0

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_57
    move-object v15, v14

    move v14, v13

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtpTimeout(IJ)I

    move-result v0

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_58
    move-object v15, v14

    move v14, v13

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpOnCall(III)I

    move-result v0

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_59
    move-object v15, v14

    move v14, v13

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 837
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeEnableSRTP(III[BI)I

    move-result v0

    .line 838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_5a
    move-object v15, v14

    move v14, v13

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 819
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeSetDtmfCodecInfo(IIIII)I

    move-result v0

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_5b
    move-object v15, v14

    move v14, v13

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/sve/ISecVideoEngineService;->saeHandleDtmf(IIII)I

    move-result v0

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_5c
    move-object v15, v14

    move v14, v13

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->saeDeleteChannel(I)I

    move-result v0

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_5d
    move-object v15, v14

    move v14, v13

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-interface {v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->saeModifyChannel(II)I

    move-result v0

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_5e
    move-object v15, v14

    move v14, v13

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-interface {v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->saeStopChannel(I)I

    move-result v0

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :pswitch_5f
    move-object v15, v14

    move v14, v13

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 753
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_60
    move-object v15, v14

    move v14, v13

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/sve/ISecVideoEngineService;->saeStartChannel(IIZ)I

    move-result v0

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_61
    move-object v15, v14

    move v14, v13

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 715
    invoke-interface/range {v0 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move/from16 v31, v14

    goto/16 :goto_3

    :pswitch_62
    move-object v15, v14

    move v14, v13

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move/from16 v31, v14

    move/from16 v14, v16

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    int-to-char v15, v15

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v16, v0

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v17, v0

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v18, v0

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v19, v0

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    move/from16 v20, v0

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 685
    invoke-interface/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p3

    .line 687
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    :pswitch_63
    move/from16 v31, v13

    move-object v3, v14

    .line 618
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->saeTerminate()V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_64
    move/from16 v31, v13

    move-object v3, v14

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v4, p0

    .line 612
    invoke-interface {v4, v0, v1, v2}, Lcom/sec/sve/ISecVideoEngineService;->saeInitialize(III)V

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_65
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 597
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-interface {v4, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_66
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 586
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-interface {v4, v0}, Lcom/sec/sve/ISecVideoEngineService;->bindToNetwork(Landroid/net/Network;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_67
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-interface {v4, v0, v1}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewResolution(II)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_68
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-interface {v4, v0}, Lcom/sec/sve/ISecVideoEngineService;->setCameraEffect(I)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_69
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-interface {v4, v0, v1, v5, v6}, Lcom/sec/sve/ISecVideoEngineService;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_6a
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    .line 544
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->switchCamera()V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_3

    :pswitch_6b
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-interface {v4, v0}, Lcom/sec/sve/ISecVideoEngineService;->setZoom(F)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_6c
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-interface {v4, v0}, Lcom/sec/sve/ISecVideoEngineService;->setOrientation(I)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_6d
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-interface {v4, v0, v1, v5}, Lcom/sec/sve/ISecVideoEngineService;->setDisplaySurface(ILandroid/view/Surface;I)V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_6e
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    move-object v2, v15

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 503
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-interface {v4, v0, v1, v5}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewSurface(ILandroid/view/Surface;I)V

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3

    :pswitch_6f
    move-object v4, v0

    move/from16 v31, v13

    move-object v3, v14

    .line 494
    invoke-interface/range {p0 .. p0}, Lcom/sec/sve/ISecVideoEngineService;->onDestroy()V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_3
    return v31

    :cond_1
    move/from16 v31, v13

    move-object v3, v14

    .line 486
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v31

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

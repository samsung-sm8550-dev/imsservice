.class public abstract Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub;
.super Landroid/os/Binder;
.source "IImsDataChannelCallback.java"

# interfaces
.implements Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_sendCallEnd:I = 0x3

.field static final TRANSACTION_sendNegotiatedLocalSdp:I = 0x4

.field static final TRANSACTION_sendSdpAnswer:I = 0x2

.field static final TRANSACTION_sendSdpOffer:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.imsdcservice.IImsDataChannelCallback"

    .line 33
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.imsdcservice.IImsDataChannelCallback"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    instance-of v1, v0, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.imsdcservice.IImsDataChannelCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 110
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendNegotiatedLocalSdp(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendCallEnd(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendSdpAnswer(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;->sendSdpOffer(ILjava/lang/String;ILjava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 64
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

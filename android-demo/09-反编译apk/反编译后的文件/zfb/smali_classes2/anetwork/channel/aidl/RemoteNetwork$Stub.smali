.class public abstract Lanetwork/channel/aidl/RemoteNetwork$Stub;
.super Landroid/os/Binder;
.source "RemoteNetwork.java"

# interfaces
.implements Lanetwork/channel/aidl/RemoteNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p0, p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lanetwork/channel/aidl/RemoteNetwork;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lanetwork/channel/aidl/RemoteNetwork;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lanetwork/channel/aidl/n;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/n;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 55
    :goto_1
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v0, p3, v2}, Lanetwork/channel/aidl/NetworkResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v2

    .line 64
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 53
    goto :goto_1

    .line 62
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 68
    :sswitch_2
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    sget-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 77
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableNetworkListener;

    move-result-object v3

    .line 78
    invoke-virtual {p0, v0, v3}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    .line 81
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 74
    goto :goto_3

    .line 85
    :sswitch_3
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    sget-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/ParcelableRequest;

    .line 93
    :goto_4
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->b(Lanetwork/channel/aidl/ParcelableRequest;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 95
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 91
    goto :goto_4

    .line 99
    :sswitch_4
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/aidl/ParcelableMsgListener$Stub;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableMsgListener;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 106
    goto/16 :goto_0

    .line 110
    :sswitch_5
    const-string/jumbo v0, "anetwork.channel.aidl.RemoteNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/aidl/ParcelableMsgListener$Stub;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableMsgListener;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableMsgListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 115
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Lorg/rome/android/ipp/binder/aidl/IppInterface$Stub;
.super Landroid/os/Binder;
.source "IppInterface.java"

# interfaces
.implements Lorg/rome/android/ipp/binder/aidl/IppInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "org.rome.android.ipp.binder.aidl.IppInterface"

    invoke-virtual {p0, p0, v0}, Lorg/rome/android/ipp/binder/aidl/IppInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lorg/rome/android/ipp/binder/aidl/IppInterface;
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
    const-string/jumbo v0, "org.rome.android.ipp.binder.aidl.IppInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/rome/android/ipp/binder/aidl/IppInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/rome/android/ipp/binder/aidl/IppInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/rome/android/ipp/binder/aidl/a;

    invoke-direct {v0, p0}, Lorg/rome/android/ipp/binder/aidl/a;-><init>(Landroid/os/IBinder;)V

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
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v1, "org.rome.android.ipp.binder.aidl.IppInterface"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v1, "org.rome.android.ipp.binder.aidl.IppInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lorg/rome/android/ipp/binder/aidl/IppInterface$Stub;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

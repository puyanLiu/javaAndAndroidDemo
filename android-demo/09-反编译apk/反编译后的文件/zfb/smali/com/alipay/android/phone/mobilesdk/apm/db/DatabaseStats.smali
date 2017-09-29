.class public Lcom/alipay/android/phone/mobilesdk/apm/db/DatabaseStats;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;
.source "DatabaseStats.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->a(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/db/DatabaseStats;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    const/16 v1, 0x9

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/db/DatabaseStats;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(C[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 14
    if-nez p1, :cond_0

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 19
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/db/DatabaseStats;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

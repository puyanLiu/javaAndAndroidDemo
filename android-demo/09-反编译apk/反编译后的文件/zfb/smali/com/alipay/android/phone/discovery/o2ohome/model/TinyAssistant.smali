.class public Lcom/alipay/android/phone/discovery/o2ohome/model/TinyAssistant;
.super Ljava/lang/Object;
.source "TinyAssistant.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationFailText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/PermissionHelper;->isAndroidM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/PermissionHelper;->isHasLocation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->location_failure_permission:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    .line 21
    :cond_0
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->location_failure:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

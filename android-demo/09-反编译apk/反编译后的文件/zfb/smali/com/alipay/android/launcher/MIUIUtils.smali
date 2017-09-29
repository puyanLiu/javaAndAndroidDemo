.class public Lcom/alipay/android/launcher/MIUIUtils;
.super Ljava/lang/Object;
.source "MIUIUtils.java"


# static fields
.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMIUI()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/alipay/android/launcher/BuildProperties;->newInstance()Lcom/alipay/android/launcher/BuildProperties;

    move-result-object v1

    .line 13
    const-string/jumbo v2, "ro.miui.ui.version.code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/launcher/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 14
    const-string/jumbo v2, "ro.miui.ui.version.name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/launcher/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 15
    const-string/jumbo v2, "ro.miui.internal.storage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/launcher/BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 17
    :goto_0
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    goto :goto_0
.end method

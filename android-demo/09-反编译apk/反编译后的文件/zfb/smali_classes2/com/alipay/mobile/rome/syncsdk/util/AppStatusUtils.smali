.class public Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;
.super Ljava/lang/Object;
.source "AppStatusUtils.java"


# static fields
.field public static SCREEN_STATUS:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

.field private static a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    .line 41
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->SCREEN_ON:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->SCREEN_STATUS:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStatusValue(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->getValue(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    return-object v0
.end method

.method public static updateAppStatus(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)V
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    .line 45
    return-void
.end method

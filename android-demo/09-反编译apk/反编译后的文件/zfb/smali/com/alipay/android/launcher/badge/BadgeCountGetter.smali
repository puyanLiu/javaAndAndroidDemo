.class public Lcom/alipay/android/launcher/badge/BadgeCountGetter;
.super Ljava/lang/Object;
.source "BadgeCountGetter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private mContext:Landroid/content/Context;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "BadgeCountGetter"

    sput-object v0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->mContext:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 27
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 25
    iput-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 28
    return-void
.end method


# virtual methods
.method public getFriendTabBadgeCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v1, :cond_1

    .line 32
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->TAG:Ljava/lang/String;

    .line 33
    const-string/jumbo v3, "mContext or authService is null"

    .line 32
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return v0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->sp:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->mContext:Landroid/content/Context;

    .line 39
    const-string/jumbo v2, "com.alipay.android.phone.socialunread"

    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->sp:Landroid/content/SharedPreferences;

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLoginUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "userInfo is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_3
    iget-object v2, p0, Lcom/alipay/android/launcher/badge/BadgeCountGetter;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unread_num_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

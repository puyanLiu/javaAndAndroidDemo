.class public Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;
.super Ljava/lang/Object;
.source "AppFactory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->values()[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Z
    .locals 2

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z
    .locals 2

    .prologue
    .line 155
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Z
    .locals 1

    .prologue
    .line 163
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    .line 24
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_1
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 39
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 42
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 45
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    .line 64
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 68
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_1
    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 75
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 78
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 81
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 84
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static createApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    .line 97
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    .line 101
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_1
    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 130
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    .line 132
    :cond_3
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 108
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 111
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 114
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 117
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

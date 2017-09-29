.class public Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
.super Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;
.source "TransportConfigureManager.java"


# static fields
.field public static final SDCARD_CONFIG_FILE:Ljava/lang/String; = "transport_config.json"

.field public static transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a:I

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->loadConfigFromSettingTool(Landroid/content/Context;)Z

    .line 218
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string/jumbo v0, "transport_config.json"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getConfigFromSdcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Conf_TransportConfigureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadConfigFromSdcard: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->parseObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->mergeConfig(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOnlineUrl(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v1, "T"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    const-string/jumbo v0, "Conf_TransportConfigureManager"

    const-string/jumbo v1, "InitOnlineConfig. Open online spdy finish."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isTestUrl(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v1, "T"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v1, "https://mobilegw.test.alipay.net/mgw.htm"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    const-string/jumbo v0, "Conf_TransportConfigureManager"

    const-string/jumbo v1, "InitOnlineConfig. Open test spdy finish."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 43
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    .line 44
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    goto :goto_0
.end method


# virtual methods
.method public getConfgureVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestVersion()I
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getConfgureVersion()Ljava/lang/String;

    move-result-object v0

    .line 191
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getVersionSecond()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionSecond()I
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION2:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public loadConfigFromSettingTool(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 133
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isEnableAmnetSetting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 139
    if-nez v2, :cond_1

    .line 140
    const-string/jumbo v1, "Conf_TransportConfigureManager"

    const-string/jumbo v2, "enableAmnetSetting is not exist!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    const-string/jumbo v2, "Conf_TransportConfigureManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    :try_start_1
    const-string/jumbo v3, "Conf_TransportConfigureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enableAmnetSetting=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_6

    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    .line 149
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "T"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 150
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "64,64,64"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 151
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "1-1"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 152
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "T"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 153
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string/jumbo v4, "mobilegw.alipay.com"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRCVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "mygwrc.alipay.com:443"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 179
    :goto_1
    const-string/jumbo v1, "Conf_TransportConfigureManager"

    const-string/jumbo v2, "settings config load finish!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 162
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "mygw.alipay.com:443"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_3
    const-string/jumbo v4, "mobilegwpre.alipay.com"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "mygwpre.alipay.com:443"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":443"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_5
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":8903"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "F"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 174
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "0,0,0"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 175
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "0-1"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "T"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 177
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public notifyConfigureChangedEvent()V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLatestVersion()I

    move-result v0

    .line 208
    iget v1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a:I

    if-eq v0, v1, :cond_0

    .line 209
    const-string/jumbo v1, "Conf_TransportConfigureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start notifyConfigureChangedEvent. currentVersion=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], latestVersion=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a:I

    .line 211
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->notifyConfigureChangedEvent()V

    .line 213
    :cond_0
    return-void
.end method

.method public updateConfig(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "Conf_TransportConfigureManager"

    const-string/jumbo v1, "updateConfig"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b(Landroid/content/Context;)V

    .line 57
    const-string/jumbo v0, "sdkSharedSwitch"

    const-string/jumbo v1, "netsdk_normal_switch"

    invoke-super {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    const-string/jumbo v0, "sdkSharedSwitch"

    const-string/jumbo v1, "android_network_core"

    invoke-super {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a(Landroid/content/Context;)V

    .line 60
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->isLoadedConfig()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 66
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_1
    const-string/jumbo v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    throw v0
.end method

.method public updateConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 70
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "Conf_TransportConfigureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateConfig json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b(Landroid/content/Context;)V

    .line 77
    const-string/jumbo v0, "sdkSharedSwitch"

    const-string/jumbo v1, "android_network_core"

    invoke-super {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a(Landroid/content/Context;)V

    .line 79
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->isLoadedConfig()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 85
    :goto_1
    return v0

    .line 73
    :cond_0
    const-string/jumbo v0, "Conf_TransportConfigureManager"

    const-string/jumbo v1, "updateConfig json"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    const-string/jumbo v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 85
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    throw v0
.end method

.method public updateConfig(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "Conf_TransportConfigureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateConfig map config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b(Landroid/content/Context;)V

    .line 96
    const-string/jumbo v0, "sdkSharedSwitch"

    const-string/jumbo v1, "android_network_core"

    invoke-super {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a(Landroid/content/Context;)V

    .line 98
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->isLoadedConfig()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 104
    :goto_1
    return v0

    .line 92
    :cond_0
    const-string/jumbo v0, "Conf_TransportConfigureManager"

    const-string/jumbo v1, "updateConfig map config"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_1
    const-string/jumbo v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 104
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    throw v0
.end method

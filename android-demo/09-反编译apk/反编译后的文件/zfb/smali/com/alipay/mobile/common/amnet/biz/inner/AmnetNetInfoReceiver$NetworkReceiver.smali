.class Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AmnetNetInfoReceiver.java"


# instance fields
.field lastMainNetType:I

.field lastNetAvailable:Ljava/lang/Boolean;

.field lastSubNetType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastMainNetType:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    return-void
.end method

.method private checkRepeatBroadcast(Landroid/content/Context;ZII)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastNetAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 162
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v2, "1 new radio. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 203
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastNetAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 168
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v2, "2 new radio. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 169
    goto :goto_0

    .line 173
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastMainNetType:I

    if-eq v0, p3, :cond_2

    .line 174
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v2, "3 new radio. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 175
    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 180
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 181
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 182
    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 183
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v1, " repeat radio,  bssid is null. "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 184
    goto :goto_0

    .line 186
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v1, " repeat radio,  bssid the same. "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 189
    goto :goto_0

    .line 191
    :cond_4
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v2, "4 new radio. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v2, "5 new radio. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 199
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v2, "6 new radio. "

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 200
    goto/16 :goto_0

    .line 202
    :cond_7
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    const-string/jumbo v1, " repeat radio, mobile subtype the same."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 203
    goto/16 :goto_0
.end method

.method private setLastInfos(Landroid/content/Context;ZII)V
    .locals 4

    .prologue
    .line 147
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastNetAvailable:Ljava/lang/Boolean;

    .line 148
    iput p3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastMainNetType:I

    .line 149
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 150
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 151
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    .line 153
    const-string/jumbo v1, "AmnetNetInfoReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " wifi info: SSID=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] BSSID=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->lastSubNetType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 126
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive: [ AmnetNetInfoReceiver ] action: [ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AmnetNetInfoReceiver hashcode=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p1}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver;->isNetAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 131
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 132
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v3

    .line 134
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->checkRepeatBroadcast(Landroid/content/Context;ZII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetNetInfoReceiver$NetworkReceiver;->setLastInfos(Landroid/content/Context;ZII)V

    .line 140
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->notifyNetWorkEvent(ZII)V

    .line 142
    const-string/jumbo v0, "AmnetNetInfoReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive: [ AmnetNetInfoReceiver ] [ isNetAvailable="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ] mainType=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] subType=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;
.super Ljava/lang/Object;
.source "DnsUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_DnsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HttpdnsIp2String(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    const-string/jumbo v1, "HttpdnsIp2String : httpdnsIP is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->IPEntries2String([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static IPEntries2String([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p0, :cond_0

    .line 130
    const-string/jumbo v1, "HTTP_DNS_DnsUtil"

    const-string/jumbo v2, "IPEntries2String : IPEntries is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-object v0

    .line 134
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->getIpWithPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/4 v2, 0x1

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 137
    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->getIpWithPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 139
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    const-string/jumbo v1, "HTTP_DNS_DnsUtil"

    const-string/jumbo v2, "IPEntries2String : exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bytesToIp([B)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFlag(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getHostFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 337
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 339
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpdnsServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 279
    .line 280
    const-string/jumbo v4, "http://mobiledc-1-64.test.alipay.net/query"

    .line 281
    const-string/jumbo v2, "http://amdc.alipay.com/query"

    .line 283
    const-string/jumbo v0, "http://mobiledc.d0832.alipay.net/query"

    .line 284
    const-string/jumbo v3, "http://amdcpre.alipay.com/query"

    .line 287
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 293
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-static {v6}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOnlineUrl(Ljava/net/URL;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHttpDnsURL: will use online URL - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 312
    :goto_0
    return-object v0

    .line 297
    :cond_0
    invoke-static {v6}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPreUrl(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHttpDnsURL: will use pre URL - "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {v6}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isTestUrl(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHttpDnsURL: will use test URL - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    .line 305
    :cond_2
    const-string/jumbo v2, "HTTP_DNS_DnsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHttpDnsURL: will use other URL - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string/jumbo v2, "HTTP_DNS_DnsUtil"

    const-string/jumbo v3, "getHttpdnsServerUrl exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 310
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static ipToBytesByReg(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 99
    :try_start_0
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 101
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 102
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 103
    const/4 v2, 0x3

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is invalid IP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLogicHost(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 76
    array-length v0, v2

    if-gtz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 79
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 80
    aget-char v3, v2, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    aget-char v3, v2, v0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_5

    :cond_2
    aget-char v3, v2, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    aget-char v3, v2, v0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_5

    :cond_3
    aget-char v3, v2, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_4

    aget-char v3, v2, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_4
    aget-char v3, v2, v0

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    aget-char v3, v2, v0

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 79
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLogicIP(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 39
    :cond_0
    const-string/jumbo v0, "^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOnlineEnv(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 317
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 319
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOnlineUrl(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    const-string/jumbo v2, "HTTP_DNS_DnsUtil"

    const-string/jumbo v3, "getHttpdnsServerUrl exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static str2IPEntries(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 155
    if-nez p0, :cond_0

    .line 156
    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    const-string/jumbo v2, "str2IPEntries : str is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 173
    :goto_0
    return-object v0

    .line 160
    :cond_0
    :try_start_0
    const-string/jumbo v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 164
    new-instance v4, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-direct {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>()V

    .line 165
    aget-object v5, v2, v0

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 166
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->setIp(Ljava/lang/String;)V

    .line 167
    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->setPort(I)V

    .line 168
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    const-string/jumbo v2, "str2IPEntries exception"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 173
    goto :goto_0
.end method

.method public static string2HttpdnsIp(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 4

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    const-string/jumbo v1, "string2HttpdnsIp : strInSP is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 210
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 212
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 213
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 214
    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->str2IPEntries(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    goto :goto_0
.end method

.method public static string2HttpdnsIpArray(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 9

    .prologue
    .line 227
    if-nez p0, :cond_0

    .line 228
    const-string/jumbo v0, "HTTP_DNS_DnsUtil"

    const-string/jumbo v1, "string2HttpdnsIp : strInSP is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    .line 232
    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 233
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 234
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 235
    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->str2IPEntries(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-result-object v5

    .line 237
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    const/4 v0, 0x0

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_1

    .line 240
    new-instance v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 241
    aget-object v8, v5, v0

    iget-object v8, v8, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v7, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 243
    invoke-virtual {v7, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 244
    invoke-virtual {v7, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 246
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    goto :goto_0
.end method

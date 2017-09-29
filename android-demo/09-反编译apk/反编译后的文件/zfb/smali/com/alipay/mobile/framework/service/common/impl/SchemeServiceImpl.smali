.class public Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/SchemeService;
.source "SchemeServiceImpl.java"


# static fields
.field public static final CLIENTVERSION:Ljava/lang/String; = "clientVersion"

.field public static final PARAM_TITLE:Ljava/lang/String; = "title"

.field public static final PARAM_URL:Ljava/lang/String; = "url"

.field public static final VERSION:Ljava/lang/String; = "v"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/os/Bundle;

.field private final f:[Ljava/lang/String;

.field private g:Lcom/alipay/mobile/framework/service/common/H5HoldListener;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/SchemeService;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a:Ljava/util/Map;

    .line 90
    const-string/jumbo v0, "SchemeServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->d:Ljava/lang/String;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "20000015"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "20000060"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "20000008"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "20000009"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->f:[Ljava/lang/String;

    .line 670
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->h:Z

    .line 671
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->i:Z

    .line 40
    return-void
.end method

.method private static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 432
    .line 433
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 437
    :cond_0
    return-object p0
.end method

.method private a(Landroid/net/Uri;Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 241
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "skipAuth"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SchemeServiceImpl"

    const-string/jumbo v2, "scheme\u4e0d\u9700\u8981auth\uff0c\u76f4\u63a5\u5904\u7406"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;->process()V

    .line 269
    :goto_1
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "packSource=dynamicBuildPack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SchemeServiceImpl"

    const-string/jumbo v3, "\u52a8\u6001\u6253\u5305\u7684scheme\u653e\u8fc7"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "appId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->f:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 245
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SchemeServiceImpl"

    const-string/jumbo v2, "\u5148\u7ecf\u8fc7atuh\u7136\u540e\u5904\u7406scheme"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;-><init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;)V

    .line 267
    const-string/jumbo v2, "SchemeServiceImpl.processWithAuth"

    .line 246
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 606
    if-nez p0, :cond_0

    move v0, v3

    .line 631
    :goto_0
    return v0

    .line 608
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 610
    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 613
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    move-object v0, v1

    .line 617
    :cond_1
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    move-object v2, v1

    .line 621
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    move v0, v3

    .line 622
    goto :goto_0

    .line 623
    :cond_3
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 624
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 625
    array-length v5, v2

    move v0, v4

    :goto_1
    if-lt v0, v5, :cond_5

    :cond_4
    move v0, v4

    .line 631
    goto :goto_0

    .line 625
    :cond_5
    aget-object v6, v2, v0

    .line 626
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v3

    .line 627
    goto :goto_0

    .line 625
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Z)V
    .locals 0

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->h:Z

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getPartnerId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getPartnerSignType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getPartnerSign(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getSignParams(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getPartnerShareType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getPartnerProdCode(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/LoggerUtils;->shareLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3

    .prologue
    .line 467
    const-string/jumbo v0, "20000167"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getParamsActionType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getParamsActionType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "outShare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SchemeServiceImpl"

    const-string/jumbo v2, "is outShare"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->e:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 479
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->b(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Lcom/alipay/mobile/framework/service/common/H5HoldListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->g:Lcom/alipay/mobile/framework/service/common/H5HoldListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v3, "isShowUnlogin"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method private static b(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 503
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 504
    if-nez v3, :cond_0

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    .line 508
    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 509
    const/4 v0, 0x0

    .line 511
    :cond_1
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 512
    if-ne v1, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 514
    :cond_2
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 515
    if-gt v2, v1, :cond_3

    if-ne v2, v5, :cond_4

    :cond_3
    move v2, v1

    .line 519
    :cond_4
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v0, v1, 0x1

    .line 524
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 526
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cleanTagId()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->b:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public extractTagId(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 443
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayfreewifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipaywifimcd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipaywifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayqr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayauth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 448
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getAppId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "tagid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    if-nez v0, :cond_2

    .line 452
    const-string/jumbo v0, ""

    .line 454
    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->b:Ljava/lang/String;

    .line 455
    if-eqz v0, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 456
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method

.method public getAppId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    :goto_0
    return-object v0

    .line 540
    :cond_0
    const-string/jumbo v0, "saId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTagId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParamsActionType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    const-string/jumbo v0, "actionType"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamsTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamsUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    const-string/jumbo v0, "partnerId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerProdCode(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    const-string/jumbo v0, "prodCode"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerShareType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    const-string/jumbo v0, "sharetype"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerSign(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    const-string/jumbo v0, "sign"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartnerSignType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    const-string/jumbo v0, "signType"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignParams(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-object v0

    .line 561
    :cond_1
    const-string/jumbo v2, "&sign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 562
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 565
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 649
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public isSchemeInvoke()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->h:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->i:Z

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->h:Z

    .line 676
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->i:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public process(Landroid/net/Uri;)I
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x1

    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayfreewifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipaywifimcd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipaywifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayqr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayauth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipayre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v9

    .line 237
    :goto_0
    return v0

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->c:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v9

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getAppId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 128
    const-string/jumbo v0, "09999985"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "09999982"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    :cond_3
    const-string/jumbo v4, "20000003"

    .line 133
    :cond_4
    if-eqz v4, :cond_5

    const-string/jumbo v0, "09999995"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "09999996"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 134
    const-string/jumbo v0, "09999997"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "09999998"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string/jumbo v0, "09999976"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    :cond_6
    const-string/jumbo v4, "20000193"

    .line 139
    :cond_7
    if-eqz v4, :cond_8

    const-string/jumbo v0, "09999990"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    const-string/jumbo v4, "10000011"

    .line 144
    :cond_8
    if-eqz v4, :cond_9

    const-string/jumbo v0, "20000167"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 145
    const-string/jumbo v1, "push"

    const-string/jumbo v0, "tagfrom"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SchemeServiceImpl"

    const-string/jumbo v2, "clean shortcut badge"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->setBadge(Landroid/content/Context;I)V

    .line 153
    :cond_9
    const-string/jumbo v0, "sourceId"

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->extractTagId(Landroid/net/Uri;)V

    .line 156
    const-string/jumbo v1, "uc-sdk-04"

    const-string/jumbo v2, "OpenBySchema"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "launchapp"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "startapp"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "addalipass"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "home"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    :cond_a
    const-string/jumbo v0, "clientVersion"

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const-string/jumbo v0, "v"

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    if-nez v0, :cond_e

    const-string/jumbo v0, "version"

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_2
    if-nez v4, :cond_f

    .line 160
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_d
    move-object v0, v8

    .line 145
    goto/16 :goto_1

    .line 158
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 161
    :cond_f
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/Activity;

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {v0, v4}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;-><init>(Landroid/app/Activity;)V

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$string;->updateInfo:I

    invoke-virtual {v4, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/alipay/mobile/base/commonbiz/R$string;->cancleUpdate:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/alipay/mobile/base/commonbiz/R$string;->confirmUpdate:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;

    invoke-direct {v6, p0, v4}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$5;-><init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/app/Activity;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 163
    :cond_10
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 165
    :cond_11
    const-string/jumbo v0, "launchapp"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 166
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 169
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 170
    new-instance v5, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;

    move-object v6, p0

    move-object v9, v4

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7, v5}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Landroid/net/Uri;Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;)V

    :goto_3
    move v0, v13

    .line 210
    goto/16 :goto_0

    .line 179
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 180
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 184
    new-instance v5, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;

    move-object v6, p0

    move-object v9, v4

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;-><init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v10, v5}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Landroid/net/Uri;Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;)V

    goto :goto_3

    .line 211
    :cond_13
    const-string/jumbo v0, "starth5openurl"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 212
    if-eqz v6, :cond_15

    .line 213
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 215
    :goto_4
    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$3;-><init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->a(Landroid/net/Uri;Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;)V

    move v0, v13

    .line 237
    goto/16 :goto_0

    :cond_14
    move v0, v9

    .line 232
    goto/16 :goto_0

    :cond_15
    move-object v0, v6

    goto :goto_4
.end method

.method public setExternData(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->e:Landroid/os/Bundle;

    .line 682
    return-void
.end method

.method public setH5HoldListener(Lcom/alipay/mobile/framework/service/common/H5HoldListener;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->g:Lcom/alipay/mobile/framework/service/common/H5HoldListener;

    .line 103
    return-void
.end method

.method protected writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 396
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 402
    return-void
.end method

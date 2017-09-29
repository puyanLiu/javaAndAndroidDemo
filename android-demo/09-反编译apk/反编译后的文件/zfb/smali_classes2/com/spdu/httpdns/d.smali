.class final Lcom/spdu/httpdns/d;
.super Ljava/lang/Object;
.source "HttpDnsBlockBox.java"


# static fields
.field private static c:Landroid/content/Context;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/spdu/httpdns/d;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/spdu/httpdns/d;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/spdu/httpdns/d;->a:I

    .line 17
    const-string/jumbo v0, "HTTPDNS"

    iput-object v0, p0, Lcom/spdu/httpdns/d;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/spdu/httpdns/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/spdu/httpdns/d;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/spdu/httpdns/e;->a:Lcom/spdu/httpdns/d;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 42
    sget-object v0, Lcom/spdu/httpdns/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    .line 45
    :cond_0
    if-nez v0, :cond_1

    .line 46
    const-string/jumbo v0, "#######################sgMgr:null"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 50
    :goto_0
    const-string/jumbo v0, ""

    .line 75
    :goto_1
    return-object v0

    .line 48
    :cond_1
    const-string/jumbo v0, "#######################data:null"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecureSignatureComp()Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    .line 56
    const-string/jumbo v2, "HTTPDNS"

    iput-object v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 57
    iget-object v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string/jumbo v3, "INPUT"

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput v4, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    .line 59
    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    const-string/jumbo v0, "#####################ssStr=null"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, ""

    goto :goto_1

    .line 66
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#######################black mc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_4

    .line 69
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_1

    .line 75
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static b()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/spdu/httpdns/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "[encryptString] sgMgr null"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->b(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/spdu/httpdns/d;->b()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/spdu/httpdns/util/BasicTools;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    const-string/jumbo v0, ""

    .line 94
    :goto_0
    return-object v0

    .line 86
    :cond_1
    const/4 v1, 0x1

    const-string/jumbo v2, "HTTPDNS"

    invoke-interface {v0, v1, v2, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    const-string/jumbo v0, ""

    .line 91
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[encryptString] RESULT : origin length  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " encrpt len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const-string/jumbo v0, "decrypt inil begin"

    invoke-static {v0}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/spdu/httpdns/d;->b()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/spdu/httpdns/util/BasicTools;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    const-string/jumbo v0, ""

    .line 112
    :goto_0
    return-object v0

    .line 104
    :cond_1
    const-string/jumbo v1, "decrypt begin"

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x1

    const-string/jumbo v2, "HTTPDNS"

    invoke-interface {v0, v1, v2, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-nez v0, :cond_2

    .line 109
    const-string/jumbo v0, ""

    .line 111
    :cond_2
    const-string/jumbo v1, "decrypt end"

    invoke-static {v1}, Lcom/spdu/httpdns/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/spdu/httpdns/d;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 34
    sget-object v0, Lcom/spdu/httpdns/d;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 35
    sput-object p1, Lcom/spdu/httpdns/d;->c:Landroid/content/Context;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/spdu/httpdns/d;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    return-void
.end method

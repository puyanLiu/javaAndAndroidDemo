.class public Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;
.super Ljava/lang/Object;
.source "NFCAdapterManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nfc/adapter/NFCAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->b:Ljava/util/Map;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->b:Ljava/util/Map;

    const-string/jumbo v1, "PBOC"

    new-instance v2, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;

    invoke-direct {v2}, Lcom/alipay/mobile/nfc/adapter/NFCPbocAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->b:Ljava/util/Map;

    const-string/jumbo v1, "NDEF"

    new-instance v2, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;

    invoke-direct {v2}, Lcom/alipay/mobile/nfc/adapter/NFCNdefTagAdapter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->a:Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->a:Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->a:Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;

    return-object v0
.end method


# virtual methods
.method public getAdapter(Ljava/lang/String;)Lcom/alipay/mobile/nfc/adapter/NFCAdapter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nfc/adapter/NFCAdapterManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nfc/adapter/NFCAdapter;

    return-object v0
.end method

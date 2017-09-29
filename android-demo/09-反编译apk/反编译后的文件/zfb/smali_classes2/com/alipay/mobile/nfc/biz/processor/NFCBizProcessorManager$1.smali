.class Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager$1;
.super Ljava/lang/Object;
.source "NFCBizProcessorManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager$1;->this$0:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager$1;->this$0:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->access$0(Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;Ljava/lang/String;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager$1;->this$0:Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;->access$0(Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessorManager;Ljava/lang/String;)Lcom/alipay/mobile/nfc/info/NfcType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nfc/info/NfcType;->compareTo(Lcom/alipay/mobile/nfc/info/NfcType;)I

    move-result v0

    return v0
.end method

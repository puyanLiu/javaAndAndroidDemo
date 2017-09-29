.class Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$3;
.super Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;
.source "AmnetGeneralEventManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

.field final synthetic val$param:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$3;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$3;->val$param:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$1;)V

    return-void
.end method


# virtual methods
.method public doNotify(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$3;->val$param:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;->collect(Ljava/util/Map;)Ljava/util/Map;

    .line 110
    return-void
.end method

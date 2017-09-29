.class Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;
.super Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;
.source "AmnetGeneralEventManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$val:D


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;->val$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;->val$val:D

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$1;)V

    return-void
.end method


# virtual methods
.method public doNotify(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;->val$key:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$4;->val$val:D

    invoke-interface {p1, v0, v1, v2}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;->report(Ljava/lang/String;D)V

    .line 124
    return-void
.end method

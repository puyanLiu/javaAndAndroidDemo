.class Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;
.super Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;
.source "AmnetGeneralEventManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

.field final synthetic val$ipLocal:Ljava/lang/String;

.field final synthetic val$ipRemote:Ljava/lang/String;

.field final synthetic val$portLocal:Ljava/lang/String;

.field final synthetic val$portRemote:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$ipLocal:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$ipRemote:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$portLocal:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$portRemote:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$1;)V

    return-void
.end method


# virtual methods
.method public doNotify(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$ipLocal:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$ipRemote:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$portLocal:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$6;->val$portRemote:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;->touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

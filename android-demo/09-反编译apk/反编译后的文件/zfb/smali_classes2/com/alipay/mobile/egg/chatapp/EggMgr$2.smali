.class Lcom/alipay/mobile/egg/chatapp/EggMgr$2;
.super Ljava/lang/Object;
.source "EggMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/egg/chatapp/EggMgr;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/egg/chatapp/EggMgr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr$2;->this$0:Lcom/alipay/mobile/egg/chatapp/EggMgr;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr$2;->this$0:Lcom/alipay/mobile/egg/chatapp/EggMgr;

    invoke-static {v0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->access$0(Lcom/alipay/mobile/egg/chatapp/EggMgr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    return-void

    .line 182
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/rpc/EggConfig;

    .line 184
    invoke-virtual {v0}, Lcom/alipay/mobile/egg/rpc/EggConfig;->getResourceId()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v2}, Lcom/alipay/mobile/egg/util/EggHelper;->getEggImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/egg/util/EggHelper;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/alipay/mobile/egg/chatapp/EggMgr$2;->this$0:Lcom/alipay/mobile/egg/chatapp/EggMgr;

    invoke-static {v2, v0}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->access$1(Lcom/alipay/mobile/egg/chatapp/EggMgr;Lcom/alipay/mobile/egg/rpc/EggConfig;)V

    goto :goto_0
.end method

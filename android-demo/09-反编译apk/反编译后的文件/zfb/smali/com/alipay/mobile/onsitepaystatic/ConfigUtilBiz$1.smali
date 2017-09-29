.class Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$cb:Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$1;->val$cb:Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$1;->val$cb:Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->doFetchByOldRPC(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V

    return-void
.end method

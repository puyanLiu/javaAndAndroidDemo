.class final Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/security/senative/APSE;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/senative/APSE;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->access$002(Lcom/alipay/mobile/security/senative/APSE;)Lcom/alipay/mobile/security/senative/APSE;

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->access$000()Lcom/alipay/mobile/security/senative/APSE;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/senative/APSE;->init(Ljava/lang/Object;)I

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->isDebug()Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->access$102(Z)Z

    return-void
.end method

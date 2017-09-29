.class Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

.field private final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$1;->this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

    iput-object p2, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$1;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$1;->this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$1;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->queryBizStatus(Landroid/os/Bundle;)V

    return-void
.end method

.class Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;
.super Ljava/lang/Object;
.source "DiagnoseStateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

.field final synthetic val$done:Z

.field final synthetic val$fin:Z

.field final synthetic val$ok:Z

.field final synthetic val$summary:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;ZZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$done:Z

    iput-boolean p3, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$ok:Z

    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$summary:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$fin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$done:Z

    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$ok:Z

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$summary:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;->val$fin:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->access$000(Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;ZZLjava/lang/String;Z)V

    .line 80
    return-void
.end method

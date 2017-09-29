.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private mIsloaded:Z

.field final synthetic this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;->mIsloaded:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;->mIsloaded:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$3;->mIsloaded:Z

    .line 186
    :cond_0
    return-void
.end method

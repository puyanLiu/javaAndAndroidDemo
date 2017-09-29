.class Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;
.super Lcom/alipay/android/app/display/event/AllowBackChangedEventArgs;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/ActivityWindowScriptable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;->this$0:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    iput-object p2, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/display/event/AllowBackChangedEventArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    const-string/jumbo v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;->val$value:Ljava/lang/String;

    .line 671
    :goto_0
    return-object v0

    .line 668
    :cond_0
    const-string/jumbo v0, "message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/alipay/android/app/pay/ActivityWindowScriptable$14;->val$message:Ljava/lang/String;

    goto :goto_0

    .line 671
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

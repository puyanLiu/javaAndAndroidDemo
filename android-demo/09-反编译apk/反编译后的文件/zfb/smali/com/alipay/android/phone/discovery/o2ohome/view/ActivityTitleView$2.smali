.class Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;
.super Ljava/lang/Object;
.source "ActivityTitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->stopTimer()V

    goto :goto_0
.end method

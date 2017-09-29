.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/o;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/o;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->setResult(I)V

    .line 203
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/o;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/o;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    .line 205
    return-void
.end method

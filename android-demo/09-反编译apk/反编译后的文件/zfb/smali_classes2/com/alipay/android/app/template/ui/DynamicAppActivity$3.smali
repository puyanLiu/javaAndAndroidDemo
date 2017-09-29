.class Lcom/alipay/android/app/template/ui/DynamicAppActivity$3;
.super Ljava/lang/Object;
.source "DynamicAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$3;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$3;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/ui/DynamicAppActivity;->dismissProgressDialog()V

    .line 283
    return-void
.end method

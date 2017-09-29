.class final Lcom/alipay/android/phone/home/manager/g;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/f;

.field private final synthetic b:Lcom/alipay/android/phone/home/manager/ViewHolder;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/f;Lcom/alipay/android/phone/home/manager/ViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/g;->a:Lcom/alipay/android/phone/home/manager/f;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/g;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/g;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/g;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->b(Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/g;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/g;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/g;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/g;->a:Lcom/alipay/android/phone/home/manager/f;

    iget-object v2, v2, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v2}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$0(Lcom/alipay/android/phone/home/manager/AppItemView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

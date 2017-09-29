.class final Lcom/alipay/mobile/socialsdk/contact/ui/bf;
.super Ljava/lang/Object;
.source "RealNameSettingActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;Lcom/alipay/mobile/commonui/widget/APRadioTableView;Z)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bf;->c:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bf;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bf;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bf;->c:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bf;->c:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bf;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bf;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;Lcom/alipay/mobile/commonui/widget/APRadioTableView;Z)V

    .line 81
    :cond_0
    return-void
.end method

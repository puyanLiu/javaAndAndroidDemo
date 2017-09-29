.class final Lcom/alipay/mobile/socialsdk/contact/ui/ag;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ag;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ag;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->onBackPressed()V

    .line 347
    return-void
.end method

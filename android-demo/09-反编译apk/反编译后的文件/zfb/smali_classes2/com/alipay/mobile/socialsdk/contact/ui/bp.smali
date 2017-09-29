.class final Lcom/alipay/mobile/socialsdk/contact/ui/bp;
.super Ljava/lang/Object;
.source "SetRemarkNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bp;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bp;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->finish()V

    .line 263
    return-void
.end method

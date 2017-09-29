.class final Lcom/alipay/mobile/socialsdk/contact/ui/w;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/w;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfirm(Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/w;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->sendVerify(Ljava/lang/String;)V

    .line 1085
    return-void
.end method

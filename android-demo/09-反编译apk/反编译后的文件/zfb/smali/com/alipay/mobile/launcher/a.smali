.class final Lcom/alipay/mobile/launcher/a;
.super Ljava/lang/Object;
.source "TitleContactButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/launcher/TitleContactButton;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/launcher/TitleContactButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/launcher/a;->a:Lcom/alipay/mobile/launcher/TitleContactButton;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "20000166"

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;)V

    .line 64
    return-void
.end method

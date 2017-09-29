.class final Lcom/alipay/mobile/socialsdk/api/widget/a;
.super Ljava/lang/Object;
.source "XListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/widget/XListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/widget/XListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/a;->a:Lcom/alipay/mobile/socialsdk/api/widget/XListView;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/a;->a:Lcom/alipay/mobile/socialsdk/api/widget/XListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/a;->a:Lcom/alipay/mobile/socialsdk/api/widget/XListView;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a(Lcom/alipay/mobile/socialsdk/api/widget/XListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a(Lcom/alipay/mobile/socialsdk/api/widget/XListView;I)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/a;->a:Lcom/alipay/mobile/socialsdk/api/widget/XListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 97
    return-void
.end method

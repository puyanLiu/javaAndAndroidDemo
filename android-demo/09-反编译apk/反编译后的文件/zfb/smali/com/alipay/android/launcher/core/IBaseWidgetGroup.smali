.class public Lcom/alipay/android/launcher/core/IBaseWidgetGroup;
.super Ljava/lang/Object;
.source "IBaseWidgetGroup.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alipay/android/launcher/core/IBaseWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    return-object v0
.end method

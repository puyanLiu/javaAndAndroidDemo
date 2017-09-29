.class final Lcom/alipay/asset/common/view/a;
.super Ljava/lang/Object;
.source "AccountInfoView.java"

# interfaces
.implements Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/AccountInfoView;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/AccountInfoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/AccountInfoView;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBadgeChange(Lcom/alipay/mobile/mpass/badge/ui/BadgeView;Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AccountInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBadgeChange, num:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

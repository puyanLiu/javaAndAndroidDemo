.class public Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssetWidgetAdapter.java"

# interfaces
.implements Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    .line 31
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->b:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    instance-of v0, p1, Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    if-eqz v0, :cond_2

    .line 87
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v0

    .line 89
    check-cast p1, Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    invoke-virtual {p1, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    goto :goto_0

    .line 91
    :cond_2
    instance-of v0, p1, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->getLeftWidgetView()Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    .line 96
    :cond_3
    check-cast p1, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->getRightWidgetView()Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    .line 42
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    .line 49
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 69
    const-string/jumbo v1, "AssetWidgetAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getView, position:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",convertView is null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez p2, :cond_1

    .line 71
    new-instance v1, Lcom/alipay/asset/common/view/WealthSectionView;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/alipay/asset/common/view/WealthSectionView;-><init>(Landroid/content/Context;)V

    :goto_1
    move-object v0, v1

    .line 73
    check-cast v0, Lcom/alipay/asset/common/view/WealthSectionView;

    invoke-virtual {v0, p0}, Lcom/alipay/asset/common/view/WealthSectionView;->setWealthWidgetViewUpdateListener(Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;)V

    move-object v0, v1

    .line 74
    check-cast v0, Lcom/alipay/asset/common/view/WealthSectionView;

    invoke-virtual {p0, p1}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    iget-boolean v3, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    invoke-virtual {v0, v2, v3}, Lcom/alipay/asset/common/view/WealthSectionView;->setSection(Lcom/alipay/android/widgets/asset/model/WealthHomeSection;Z)V

    .line 75
    return-object v1

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

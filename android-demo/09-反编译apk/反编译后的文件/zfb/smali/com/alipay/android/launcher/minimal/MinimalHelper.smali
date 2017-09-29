.class public Lcom/alipay/android/launcher/minimal/MinimalHelper;
.super Ljava/lang/Object;
.source "MinimalHelper.java"


# static fields
.field private static final MinimalKey:Ljava/lang/String; = "Minimal"

.field private static final MinimalSPKey:Ljava/lang/String; = "MinimalTabLauncherSP"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentMinimalStatus:Ljava/lang/String;

.field private minimalStatusSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alipay/android/launcher/minimal/MinimalHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "wallet_init"

    iput-object v0, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->currentMinimalStatus:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->minimalStatusSet:Z

    .line 22
    return-void
.end method

.method private isMinimalStatusValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    const-string/jumbo v2, "wallet_simple_general"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_2
    const-string/jumbo v2, "wallet_simple_old"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_3
    const-string/jumbo v2, "wallet_simple_young"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 202
    goto :goto_0

    .line 204
    :cond_4
    const-string/jumbo v2, "wallet_standard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_5
    const-string/jumbo v2, "wallet_init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 208
    goto :goto_0
.end method

.method private recursive(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_3

    .line 100
    instance-of v1, p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v1, :cond_0

    .line 101
    check-cast p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 111
    :goto_0
    return-object p1

    .line 102
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 103
    check-cast p1, Landroid/view/ViewGroup;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 107
    :goto_1
    if-le v1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->recursive(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    .line 106
    if-nez v0, :cond_4

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_2
    sget-object v1, Lcom/alipay/android/launcher/minimal/MinimalHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recursive():ignore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public getMinimalStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->currentMinimalStatus:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    .line 159
    :cond_0
    const-string/jumbo v0, "MinimalTabLauncherSP"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "Minimal"

    const-string/jumbo v2, "wallet_standard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->currentMinimalStatus:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->currentMinimalStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public isMinimalStatusSet()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->minimalStatusSet:Z

    return v0
.end method

.method public declared-synchronized minimalStatusSet(Z)V
    .locals 1

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->minimalStatusSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveMinimalStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 172
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->isMinimalStatusValid(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 175
    :cond_1
    :try_start_1
    const-string/jumbo v1, "MinimalTabLauncherSP"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 176
    const-string/jumbo v2, "Minimal"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    iget-object v1, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->currentMinimalStatus:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->isMinimalStatusSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    :goto_1
    if-eqz v0, :cond_2

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->minimalStatusSet(Z)V

    .line 181
    :cond_2
    iput-object p2, p0, Lcom/alipay/android/launcher/minimal/MinimalHelper;->currentMinimalStatus:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public shouldMinimal(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->getMinimalStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string/jumbo v3, "wallet_simple_general"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_2
    const-string/jumbo v3, "wallet_simple_old"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_3
    const-string/jumbo v3, "wallet_simple_young"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :cond_4
    const-string/jumbo v1, "wallet_standard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string/jumbo v1, "wallet_init"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public shouldWidgetGroupToggleBackButton(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 123
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    :cond_2
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 124
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public toggleBackButton(Landroid/view/View;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->recursive(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    if-eqz p2, :cond_2

    .line 89
    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    .line 94
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public toggleBackButton(Landroid/widget/TabHost;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    if-nez p1, :cond_1

    move v2, v1

    .line 73
    :cond_0
    :goto_0
    return v2

    .line 65
    :cond_1
    const v0, 0x1020011

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 66
    if-nez v0, :cond_2

    move v2, v1

    .line 67
    goto :goto_0

    :cond_2
    move v1, v2

    .line 69
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 71
    invoke-virtual {p0, v3, p2}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->toggleBackButton(Landroid/view/View;Z)Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toggleTabWidget(Lcom/alipay/android/launcher/TabLauncher;Landroid/widget/TabHost;Ljava/util/List;Landroid/app/ActionBar$TabListener;Z)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/launcher/TabLauncher;",
            "Landroid/widget/TabHost;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;",
            "Landroid/app/ActionBar$TabListener;",
            "Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    if-eqz p5, :cond_2

    .line 48
    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 52
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    goto :goto_1
.end method

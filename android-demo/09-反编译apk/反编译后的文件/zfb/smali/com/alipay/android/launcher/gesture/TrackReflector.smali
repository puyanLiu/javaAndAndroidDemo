.class public Lcom/alipay/android/launcher/gesture/TrackReflector;
.super Ljava/lang/Object;
.source "TrackReflector.java"


# static fields
.field private static INSTANCE:Lcom/alipay/android/launcher/gesture/TrackReflector;


# instance fields
.field mClassView:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mClassViewListenerInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

.field mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

.field mFieldView_mOnClickListener:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/launcher/gesture/TrackReflector;->INSTANCE:Lcom/alipay/android/launcher/gesture/TrackReflector;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassView:Ljava/lang/Class;

    .line 22
    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    .line 23
    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

    .line 26
    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassViewListenerInfo:Ljava/lang/Class;

    .line 27
    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    .line 33
    :try_start_0
    const-string/jumbo v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassView:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 37
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassView:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassView:Ljava/lang/Class;

    const-string/jumbo v1, "mListenerInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

    .line 46
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    .line 48
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassView:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 55
    :try_start_2
    const-string/jumbo v0, "android.view.View$ListenerInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassViewListenerInfo:Ljava/lang/Class;

    .line 56
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassViewListenerInfo:Ljava/lang/Class;

    const-string/jumbo v1, "mOnClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    .line 57
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    :cond_1
    :goto_2
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassView:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 69
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mClassView:Ljava/lang/Class;

    const-string/jumbo v1, "mOnClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    .line 71
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 61
    :catch_1
    move-exception v0

    goto :goto_2

    .line 59
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0

    .line 35
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/android/launcher/gesture/TrackReflector;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alipay/android/launcher/gesture/TrackReflector;->INSTANCE:Lcom/alipay/android/launcher/gesture/TrackReflector;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/alipay/android/launcher/gesture/TrackReflector;

    invoke-direct {v0}, Lcom/alipay/android/launcher/gesture/TrackReflector;-><init>()V

    sput-object v0, Lcom/alipay/android/launcher/gesture/TrackReflector;->INSTANCE:Lcom/alipay/android/launcher/gesture/TrackReflector;

    .line 88
    :cond_0
    sget-object v0, Lcom/alipay/android/launcher/gesture/TrackReflector;->INSTANCE:Lcom/alipay/android/launcher/gesture/TrackReflector;

    return-object v0
.end method

.method private getOnClickListenerV(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-object v1

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 119
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private getOnClickListenerV14(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    iget-object v2, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private setOnClickListenerV(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mOnClickListener:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setOnClickListenerV14(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldView_mListenerInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    iget-object v1, p0, Lcom/alipay/android/launcher/gesture/TrackReflector;->mFieldViewListenerInfo_mOnClickListener:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getOnClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/gesture/TrackReflector;->getOnClickListenerV14(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/gesture/TrackReflector;->getOnClickListenerV(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/gesture/TrackReflector;->setOnClickListenerV14(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/gesture/TrackReflector;->setOnClickListenerV(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

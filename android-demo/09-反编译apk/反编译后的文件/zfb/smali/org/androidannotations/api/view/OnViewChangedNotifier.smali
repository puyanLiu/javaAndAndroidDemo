.class public Lorg/androidannotations/api/view/OnViewChangedNotifier;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/androidannotations/api/view/OnViewChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->b:Ljava/util/Set;

    return-void
.end method

.method public static registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V
    .locals 1

    sget-object v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    iget-object v0, v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;
    .locals 1

    sget-object v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    sput-object p0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->a:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-object v0
.end method


# virtual methods
.method public notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 2

    iget-object v0, p0, Lorg/androidannotations/api/view/OnViewChangedNotifier;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/api/view/OnViewChangedListener;

    invoke-interface {v0, p1}, Lorg/androidannotations/api/view/OnViewChangedListener;->onViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class public final Lorg/androidannotations/api/builder/PostActivityStarter;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/androidannotations/api/builder/PostActivityStarter;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final withAnimation(II)V
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/builder/PostActivityStarter;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/androidannotations/api/builder/PostActivityStarter;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

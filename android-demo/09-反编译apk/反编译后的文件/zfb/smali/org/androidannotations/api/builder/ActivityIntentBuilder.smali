.class public abstract Lorg/androidannotations/api/builder/ActivityIntentBuilder;
.super Lorg/androidannotations/api/builder/IntentBuilder;

# interfaces
.implements Lorg/androidannotations/api/builder/ActivityStarter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/androidannotations/api/builder/ActivityIntentBuilder",
        "<TI;>;>",
        "Lorg/androidannotations/api/builder/IntentBuilder",
        "<TI;>;",
        "Lorg/androidannotations/api/builder/ActivityStarter;"
    }
.end annotation


# instance fields
.field protected lastOptions:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/builder/IntentBuilder;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/builder/IntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final start()Lorg/androidannotations/api/builder/PostActivityStarter;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/androidannotations/api/builder/ActivityIntentBuilder;->startForResult(I)Lorg/androidannotations/api/builder/PostActivityStarter;

    new-instance v0, Lorg/androidannotations/api/builder/PostActivityStarter;

    iget-object v1, p0, Lorg/androidannotations/api/builder/ActivityIntentBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/androidannotations/api/builder/PostActivityStarter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract startForResult(I)Lorg/androidannotations/api/builder/PostActivityStarter;
.end method

.method public withOptions(Landroid/os/Bundle;)Lorg/androidannotations/api/builder/ActivityStarter;
    .locals 0

    iput-object p1, p0, Lorg/androidannotations/api/builder/ActivityIntentBuilder;->lastOptions:Landroid/os/Bundle;

    return-object p0
.end method

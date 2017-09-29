.class public abstract Lorg/androidannotations/api/builder/IntentBuilder;
.super Lorg/androidannotations/api/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/androidannotations/api/builder/IntentBuilder",
        "<TI;>;>",
        "Lorg/androidannotations/api/builder/Builder;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lorg/androidannotations/api/builder/Builder;-><init>()V

    iput-object p1, p0, Lorg/androidannotations/api/builder/IntentBuilder;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lorg/androidannotations/api/builder/IntentBuilder;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;B)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;C)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;D)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;F)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;J)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Landroid/os/Bundle;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Landroid/os/Parcelable;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;S)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[B)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[C)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[D)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[F)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[I)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[J)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[Landroid/os/Parcelable;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/os/Parcelable;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[Ljava/lang/String;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[S)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[S)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[S)Landroid/content/Intent;

    return-object p0
.end method

.method public extra(Ljava/lang/String;[Z)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    return-object p0
.end method

.method public extras(Landroid/content/Intent;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    return-object p0
.end method

.method public flags(I)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public integerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public parcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public stringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/androidannotations/api/builder/IntentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

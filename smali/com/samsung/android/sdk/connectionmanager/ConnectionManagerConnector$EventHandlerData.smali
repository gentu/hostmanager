.class Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;
.super Ljava/lang/Object;
.source "ConnectionManagerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerData"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mEventId:I

.field mHanlder:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

.field final synthetic this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;ILandroid/os/Bundle;Lcom/samsung/android/sdk/connectionmanager/EventHandler;)V
    .locals 2
    .param p2, "event"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "handler"    # Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .prologue
    const/4 v1, 0x0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->this$0:Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mEventId:I

    .line 171
    iput-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mBundle:Landroid/os/Bundle;

    .line 173
    iput-object v1, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mHanlder:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .line 176
    iput p2, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mEventId:I

    .line 177
    iput-object p3, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mBundle:Landroid/os/Bundle;

    .line 178
    iput-object p4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mHanlder:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .line 179
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;

    .line 184
    .local v0, "obj":Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 187
    goto :goto_0

    .line 188
    :cond_2
    instance-of v3, p1, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;

    if-eqz v3, :cond_0

    .line 190
    iget v3, v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mEventId:I

    iget v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mEventId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mHanlder:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    iget-object v4, p0, Lcom/samsung/android/sdk/connectionmanager/ConnectionManagerConnector$EventHandlerData;->mHanlder:Lcom/samsung/android/sdk/connectionmanager/EventHandler;

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 192
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

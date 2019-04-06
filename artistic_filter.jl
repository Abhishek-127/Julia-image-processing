function jitter(img, amnt=10)

    dx,dy = size(img) 
    imgN = copy(img)
 
    for x=1:dx, y=1:dy
        nx = round(Int, x + (rand()-0.5) * amnt)
        ny = round(Int, y + (rand()-0.5) * amnt)
        if (nx < 1)
            nx = 1
        elseif (nx > dx)
            nx = dx
        end
        if (ny < 1)
            ny = 1
        elseif (ny > dy)
            ny = dy
        end
        pixel = img[nx,ny,:]
        imgN[x,y,:] = pixel
    end
 
    return imgN
end

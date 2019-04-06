function localStatENH(img, k, n)

    dx, dy = size(img)
    imgN = copy(img)
    w = div(n,2)

    for i=w+1:dx-w, j=w+1:dy-w
        block = img[i-w:i+w, j-w:j+w]
        statB = mean(block)
        newP = statB + k * (img[i,j] - statB)
        if (newP < 0)
            newP = 0
        elseif (newP > 255)
            newP = 255
        end
        imgN[i,j] = trunc(UInt8,newP)
    end
    return imgN
end
